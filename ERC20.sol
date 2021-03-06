// Interface for ERC20 Token Standard
pragma solidity ^0.4.24;

interface ERC20{

  // @notice send `_value` token to `_to` from `msg.sender`
  // @param _to The address of the recipient
  // @param _value The amount of token to be transferred
  // @return Whether the transfer was successful or not
  function transfer(address _to, uint256 _value) external returns (bool);

  // @notice send `_value` token to `_to` from `_from` on the condition it is approved by `_from`
  // @param _from The address of the sender
  // @param _to The address of the recipient
  // @param _value The amount of token to be transferred
  // @return Whether the transfer was successful or not
  function transferFrom(address _from, address _to, uint256 _value) external returns (bool);

  // @notice `msg.sender` approves `_spender` to spend `_value` tokens
  // @param _spender The address of the account able to transfer the tokens
  // @param _value The amount of tokens to be approved for transfer
  // @return Whether the approval was successful or not
  function approve(address _spender, uint256 _value) external returns (bool);

  // @param _owner The address of the account owning tokens
  // @param _spender The address of the account able to transfer the tokens
  // @return Amount of remaining tokens allowed to spent
  function allowance(address _owner, address _spender) external view returns (uint256);

  event Transfer(address _from, address _to, uint256 _value);
  event Approval(address _from, address _to, uint256 _value);
}
