-module(cryptoapis_mined_transaction_rb).

-export([encode/1]).

-export_type([cryptoapis_mined_transaction_rb/0]).

-type cryptoapis_mined_transaction_rb() ::
    #{ 'context' => binary(),
       'data' := cryptoapis_mined_transaction_rb_data:cryptoapis_mined_transaction_rb_data()
     }.

encode(#{ 'context' := Context,
          'data' := Data
        }) ->
    #{ 'context' => Context,
       'data' => Data
     }.
