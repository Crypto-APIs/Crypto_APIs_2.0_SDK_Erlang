-module(cryptoapis_get_internal_transaction_by_transaction_hash_and_operation_id_r_data).

-export([encode/1]).

-export_type([cryptoapis_get_internal_transaction_by_transaction_hash_and_operation_id_r_data/0]).

-type cryptoapis_get_internal_transaction_by_transaction_hash_and_operation_id_r_data() ::
    #{ 'item' := cryptoapis_get_internal_transaction_by_transaction_hash_and_operation_id_ri:cryptoapis_get_internal_transaction_by_transaction_hash_and_operation_id_ri()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
