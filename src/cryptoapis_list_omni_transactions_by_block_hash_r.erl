-module(cryptoapis_list_omni_transactions_by_block_hash_r).

-export([encode/1]).

-export_type([cryptoapis_list_omni_transactions_by_block_hash_r/0]).

-type cryptoapis_list_omni_transactions_by_block_hash_r() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'data' := cryptoapis_list_omni_transactions_by_block_hash_r_data:cryptoapis_list_omni_transactions_by_block_hash_r_data()
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
