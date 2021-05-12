-module(cryptoapis_get_contract_details_by_address_response_item).

-export([encode/1]).

-export_type([cryptoapis_get_contract_details_by_address_response_item/0]).

-type cryptoapis_get_contract_details_by_address_response_item() ::
    #{ 'confirmedBalance' := binary(),
       'creatorAddress' := binary(),
       'tokenDecimals' => binary(),
       'tokenName' => binary(),
       'tokenSymbol' => binary(),
       'tokenType' => binary(),
       'tokensBalance' := binary(),
       'totalSupply' := binary()
     }.

encode(#{ 'confirmedBalance' := ConfirmedBalance,
          'creatorAddress' := CreatorAddress,
          'tokenDecimals' := TokenDecimals,
          'tokenName' := TokenName,
          'tokenSymbol' := TokenSymbol,
          'tokenType' := TokenType,
          'tokensBalance' := TokensBalance,
          'totalSupply' := TotalSupply
        }) ->
    #{ 'confirmedBalance' => ConfirmedBalance,
       'creatorAddress' => CreatorAddress,
       'tokenDecimals' => TokenDecimals,
       'tokenName' => TokenName,
       'tokenSymbol' => TokenSymbol,
       'tokenType' => TokenType,
       'tokensBalance' => TokensBalance,
       'totalSupply' => TotalSupply
     }.
