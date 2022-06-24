-module(cryptoapis_get_omni_transaction_details_by_transaction_id_txid_ri_senders_inner).

-export([encode/1]).

-export_type([cryptoapis_get_omni_transaction_details_by_transaction_id_txid_ri_senders_inner/0]).

-type cryptoapis_get_omni_transaction_details_by_transaction_id_txid_ri_senders_inner() ::
    #{ 'address' := binary(),
       'amount' := binary()
     }.

encode(#{ 'address' := Address,
          'amount' := Amount
        }) ->
    #{ 'address' => Address,
       'amount' => Amount
     }.
