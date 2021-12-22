-module(cryptoapis_get_internal_transaction_by_transaction_hash_and_operation_id_e401).

-export([encode/1]).

-export_type([cryptoapis_get_internal_transaction_by_transaction_hash_and_operation_id_e401/0]).

-type cryptoapis_get_internal_transaction_by_transaction_hash_and_operation_id_e401() ::
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
