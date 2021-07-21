-module(cryptoapis_get_xrp_ripple_block_details_by_block_hash_r).

-export([encode/1]).

-export_type([cryptoapis_get_xrp_ripple_block_details_by_block_hash_r/0]).

-type cryptoapis_get_xrp_ripple_block_details_by_block_hash_r() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'data' := cryptoapis_get_xrp_ripple_block_details_by_block_hash_r_data:cryptoapis_get_xrp_ripple_block_details_by_block_hash_r_data()
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
