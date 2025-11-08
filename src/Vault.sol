//SPDXX-License-Identifier: MIT

pragma solidity ^0.8.24;

import {IRebaseToken} from "./Interfaces/IRebaseToken.sol";
import {RebaseToken} from "./RebaseToken.sol";

contract Vault {
    RebaseToken public rebaseToken;
    event Deposited(address indexed user, uint256 amount);
    event Redeem(address indexed user, uint256 amount);

    error Vault__redeemFaild();

    constructor(address _rebaseToken) {
        rebaseToken = RebaseToken(_rebaseToken);
    }

    receive() external payable {}

    function deposit() external payable {
        rebaseToken.mint(msg.sender, msg.value, rebaseToken.getInterestRate());
        emit Deposited(msg.sender, msg.value);
    }

    /**
     * @dev redeems rebase token for the underlying asset
     * @param _amount the amount being redeemed
     *
     */
    function redeem(uint256 _amount) external {
        rebaseToken.burn(msg.sender, _amount);
        (bool success,) = payable(msg.sender).call{value: _amount}("");
        if (!success) {
            revert Vault__redeemFaild();
        }
        emit Redeem(msg.sender, _amount);
    }

    function getRebaseTokenAddress() external view returns (address) {
        return address(rebaseToken);
    }
}
