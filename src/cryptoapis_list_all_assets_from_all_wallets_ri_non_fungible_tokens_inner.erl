-module(cryptoapis_list_all_assets_from_all_wallets_ri_non_fungible_tokens_inner).

-export([encode/1]).

-export_type([cryptoapis_list_all_assets_from_all_wallets_ri_non_fungible_tokens_inner/0]).

-type cryptoapis_list_all_assets_from_all_wallets_ri_non_fungible_tokens_inner() ::
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
