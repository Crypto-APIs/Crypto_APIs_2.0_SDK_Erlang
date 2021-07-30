-module(cryptoapis_broadcast_locally_signed_transaction_rb).

-export([encode/1]).

-export_type([cryptoapis_broadcast_locally_signed_transaction_rb/0]).

-type cryptoapis_broadcast_locally_signed_transaction_rb() ::
    #{ 'context' => binary(),
       'data' := cryptoapis_broadcast_locally_signed_transaction_rb_data:cryptoapis_broadcast_locally_signed_transaction_rb_data()
     }.

encode(#{ 'context' := Context,
          'data' := Data
        }) ->
    #{ 'context' => Context,
       'data' => Data
     }.
