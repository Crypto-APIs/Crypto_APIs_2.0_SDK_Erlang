-module(cryptoapis_get_contract_details_by_address_ri).

-export([encode/1]).

-export_type([cryptoapis_get_contract_details_by_address_ri/0]).

-type cryptoapis_get_contract_details_by_address_ri() ::
    #{ 'tokenDecimals' := binary(),
       'tokenName' => binary(),
       'tokenSymbol' => binary(),
       'tokenType' := binary(),
       'totalSupply' := binary()
     }.

encode(#{ 'tokenDecimals' := TokenDecimals,
          'tokenName' := TokenName,
          'tokenSymbol' := TokenSymbol,
          'tokenType' := TokenType,
          'totalSupply' := TotalSupply
        }) ->
    #{ 'tokenDecimals' => TokenDecimals,
       'tokenName' => TokenName,
       'tokenSymbol' => TokenSymbol,
       'tokenType' => TokenType,
       'totalSupply' => TotalSupply
     }.
