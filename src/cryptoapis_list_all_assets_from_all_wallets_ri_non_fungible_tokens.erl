-module(cryptoapis_list_all_assets_from_all_wallets_ri_non_fungible_tokens).

-export([encode/1]).

-export_type([cryptoapis_list_all_assets_from_all_wallets_ri_non_fungible_tokens/0]).

-type cryptoapis_list_all_assets_from_all_wallets_ri_non_fungible_tokens() ::
    #{ 'blockchain' := binary(),
       'identifier' := binary(),
       'network' := binary(),
       'symbol' := binary(),
       'tokenId' := binary(),
       'type' := binary()
     }.

encode(#{ 'blockchain' := Blockchain,
          'identifier' := Identifier,
          'network' := Network,
          'symbol' := Symbol,
          'tokenId' := TokenId,
          'type' := Type
        }) ->
    #{ 'blockchain' => Blockchain,
       'identifier' => Identifier,
       'network' => Network,
       'symbol' => Symbol,
       'tokenId' => TokenId,
       'type' => Type
     }.
