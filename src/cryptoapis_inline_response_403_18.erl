-module(cryptoapis_inline_response_403_18).

-export([encode/1]).

-export_type([cryptoapis_inline_response_403_18/0]).

-type cryptoapis_inline_response_403_18() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_list_xrp_ripple_transactions_by_block_hash_e403:cryptoapis_list_xrp_ripple_transactions_by_block_hash_e403()
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
