-module(cryptoapis_inline_response_400_52).

-export([encode/1]).

-export_type([cryptoapis_inline_response_400_52/0]).

-type cryptoapis_inline_response_400_52() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_list_unspent_transaction_outputs_by_address_e400:cryptoapis_list_unspent_transaction_outputs_by_address_e400()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'requestId' := RequestId,
          'context' := Context,
          'error' := Error
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'requestId' => RequestId,
       'context' => Context,
       'error' => Error
     }.
