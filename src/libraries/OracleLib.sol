// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.18;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

/**
 * @title OracleLib
 * @author Aftab Ahmed
 * @notice This library is used to check the Chainlink Oracle for stale data.
 * If a price is stale, the function will reverty, and render the DSCEngine unsuble
 * 
 * So if the Chainlink network explodes and you have lot of money locked in the protocol...
 * 
 */
library OracleLib {
    error OracleLib__StalePrice();

    uint256 private constant TIMEOUT = 3 hours; // 3 * 60 * 60 = 10800 seconds

    function staleCheckLatestRoundData(AggregatorV3Interface priceFeed) public view returns(uint80, int256, uint256, uint256,uint80)
    {
        (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt,uint80 answeredInRound) = priceFeed.latestRoundData();

        uint256 secondsSince = block.timestamp - updatedAt;
        if(secondsSince > TIMEOUT) revert OracleLib__StalePrice();
        return (roundId,answer,startedAt,updatedAt,answeredInRound);
    }
}