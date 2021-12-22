-module(cryptoapis_inline_response_401_31).

-export([encode/1]).

-export_type([cryptoapis_inline_response_401_31/0]).

-type cryptoapis_inline_response_401_31() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_get_xrp_ripple_block_details_by_block_hash_e401:cryptoapis_get_xrp_ripple_block_details_by_block_hash_e401()
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
