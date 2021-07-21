-module(cryptoapis_get_unconfirmed_omni_transaction_by_transaction_id_txid_r_data).

-export([encode/1]).

-export_type([cryptoapis_get_unconfirmed_omni_transaction_by_transaction_id_txid_r_data/0]).

-type cryptoapis_get_unconfirmed_omni_transaction_by_transaction_id_txid_r_data() ::
    #{ 'item' := cryptoapis_get_unconfirmed_omni_transaction_by_transaction_id_txid_ri:cryptoapis_get_unconfirmed_omni_transaction_by_transaction_id_txid_ri()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
