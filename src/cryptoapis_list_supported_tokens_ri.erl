-module(cryptoapis_list_supported_tokens_ri).

-export([encode/1]).

-export_type([cryptoapis_list_supported_tokens_ri/0]).

-type cryptoapis_list_supported_tokens_ri() ::
    #{ 'decimals' := integer(),
       'identifier' := binary(),
       'name' := binary(),
       'symbol' := binary(),
       'type' := binary()
     }.

encode(#{ 'decimals' := Decimals,
          'identifier' := Identifier,
          'name' := Name,
          'symbol' := Symbol,
          'type' := Type
        }) ->
    #{ 'decimals' => Decimals,
       'identifier' => Identifier,
       'name' => Name,
       'symbol' => Symbol,
       'type' => Type
     }.
