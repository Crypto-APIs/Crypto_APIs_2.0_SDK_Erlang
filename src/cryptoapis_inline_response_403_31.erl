-module(cryptoapis_inline_response_403_31).

-export([encode/1]).

-export_type([cryptoapis_inline_response_403_31/0]).

-type cryptoapis_inline_response_403_31() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_get_xrp_ripple_block_details_by_block_hash_e403:cryptoapis_get_xrp_ripple_block_details_by_block_hash_e403()
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
