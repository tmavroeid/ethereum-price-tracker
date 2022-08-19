pragma solidity ^0.8.0;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract PriceTrackerV3 {
  AggregatorV3Interface public priceFeed;

  constructor() public {
    //the mainnet Ethereum ETH/USD contract address of AggregatorV3Instance (check here https://docs.chain.link/docs/ethereum-addresses/#Rinkeby%20Testnet)
    priceFeed = AggregatorV3Interface(0x8A753747A1Fa494EC906cE90E9f37563A8AF630e);
  }

  function getLatestPrice() public view returns (int) {
    (,int price,,,) = priceFeed.latestRoundData();
    return price;
  }

  function getDecimals() public view returns (uint8) {
    uint8 decimals = priceFeed.decimals();
    return decimals;
  }
}
