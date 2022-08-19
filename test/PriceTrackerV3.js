const { expect } = require("chai");
describe("Price Tracker", function(){
  it("Deployment should assign an instance of the Aggregator Interface to the public priceFeed variable.", async function(){
    const [owner] = await ethers.getSigners();
    const PriceTrackerV3 = await ethers.getContractFactory("PriceTrackerV3");
    const hardhatPriceTrackerV3 = await PriceTrackerV3.deploy();
  });
});
