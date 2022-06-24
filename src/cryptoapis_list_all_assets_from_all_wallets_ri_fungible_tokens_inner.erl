-module(cryptoapis_list_all_assets_from_all_wallets_ri_fungible_tokens_inner).

-export([encode/1]).

-export_type([cryptoapis_list_all_assets_from_all_wallets_ri_fungible_tokens_inner/0]).

-type cryptoapis_list_all_assets_from_all_wallets_ri_fungible_tokens_inner() ::
    #{ 'amount' := binary(),
       'blockchain' := binary(),
       'identifier' := binary(),
       'network' := binary(),
       'symbol' := binary(),
       'type' := binary()
     }.

encode(#{ 'amount' := Amount,
          'blockchain' := Blockchain,
          'identifier' := Identifier,
          'network' := Network,
          'symbol' := Symbol,
          'type' := Type
        }) ->
    #{ 'amount' => Amount,
       'blockchain' => Blockchain,
       'identifier' => Identifier,
       'network' => Network,
       'symbol' => Symbol,
       'type' => Type
     }.
