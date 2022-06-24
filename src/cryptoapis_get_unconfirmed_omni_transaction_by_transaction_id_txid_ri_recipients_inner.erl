-module(cryptoapis_get_unconfirmed_omni_transaction_by_transaction_id_txid_ri_recipients_inner).

-export([encode/1]).

-export_type([cryptoapis_get_unconfirmed_omni_transaction_by_transaction_id_txid_ri_recipients_inner/0]).

-type cryptoapis_get_unconfirmed_omni_transaction_by_transaction_id_txid_ri_recipients_inner() ::
    #{ 'address' := binary(),
       'amount' := binary()
     }.

encode(#{ 'address' := Address,
          'amount' := Amount
        }) ->
    #{ 'address' => Address,
       'amount' => Amount
     }.
