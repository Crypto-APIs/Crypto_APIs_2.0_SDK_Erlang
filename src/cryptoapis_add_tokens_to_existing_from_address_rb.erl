-module(cryptoapis_add_tokens_to_existing_from_address_rb).

-export([encode/1]).

-export_type([cryptoapis_add_tokens_to_existing_from_address_rb/0]).

-type cryptoapis_add_tokens_to_existing_from_address_rb() ::
    #{ 'context' => binary(),
       'data' := cryptoapis_add_tokens_to_existing_from_address_rb_data:cryptoapis_add_tokens_to_existing_from_address_rb_data()
     }.

encode(#{ 'context' := Context,
          'data' := Data
        }) ->
    #{ 'context' => Context,
       'data' => Data
     }.
