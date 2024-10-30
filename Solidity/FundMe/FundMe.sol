// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

interface AggregatorV3Interface {
  function decimals() external view returns (uint8);

  function description() external view returns (string memory);

  function version() external view returns (uint256);

  function getRoundData(
    uint80 _roundId
  ) external view returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);

  function latestRoundData()
    external
    view
    returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);
}

contract FundMe{ 
    // Payble is used to allow users to enter the pay value in the remix environment 
    // making payable ensures we can use the require function 
    // revert is occures when the payable is not exicuted in that case the state remains same;
    uint256 public  cnt  = 1; // in this case the cnt ++ will only be exicuted when it is sucess
    function fund() public payable { 
        cnt+=2;
        require(msg.value > 1e18 , "Did'nt confirm the fund");
    }

}