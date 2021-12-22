-module(cryptoapis_get_unconfirmed_omni_transaction_by_transaction_id_txid_e401).

-export([encode/1]).

-export_type([cryptoapis_get_unconfirmed_omni_transaction_by_transaction_id_txid_e401/0]).

-type cryptoapis_get_unconfirmed_omni_transaction_by_transaction_id_txid_e401() ::
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
