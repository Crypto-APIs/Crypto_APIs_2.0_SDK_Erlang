-module(cryptoapis_list_omni_transactions_by_block_hash_e401).

-export([encode/1]).

-export_type([cryptoapis_list_omni_transactions_by_block_hash_e401/0]).

-type cryptoapis_list_omni_transactions_by_block_hash_e401() ::
    #{ 'code' := binary(),
       'message' := binary(),
       'details' => list()
     }.

encode(#{ 'code' := Code,
          'message' := Message,
          'details' := Details
        }) ->
    #{ 'code' => Code,
       'message' => Message,
       'details' => Details
     }.
