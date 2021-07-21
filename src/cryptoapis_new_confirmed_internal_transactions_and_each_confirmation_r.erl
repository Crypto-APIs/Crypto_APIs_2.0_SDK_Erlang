-module(cryptoapis_new_confirmed_internal_transactions_and_each_confirmation_r).

-export([encode/1]).

-export_type([cryptoapis_new_confirmed_internal_transactions_and_each_confirmation_r/0]).

-type cryptoapis_new_confirmed_internal_transactions_and_each_confirmation_r() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'data' := cryptoapis_new_confirmed_internal_transactions_and_each_confirmation_r_data:cryptoapis_new_confirmed_internal_transactions_and_each_confirmation_r_data()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'requestId' := RequestId,
          'context' := Context,
          'data' := Data
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'requestId' => RequestId,
       'context' => Context,
       'data' => Data
     }.
