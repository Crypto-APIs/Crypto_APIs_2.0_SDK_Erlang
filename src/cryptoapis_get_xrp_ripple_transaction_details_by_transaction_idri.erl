-module(cryptoapis_get_xrp_ripple_transaction_details_by_transaction_idri).

-export([encode/1]).

-export_type([cryptoapis_get_xrp_ripple_transaction_details_by_transaction_idri/0]).

-type cryptoapis_get_xrp_ripple_transaction_details_by_transaction_idri() ::
    #{ 'additionalData' := binary(),
       'index' := binary(),
       'minedInBlockHash' := binary(),
       'minedInBlockHeight' := binary(),
       'offer' := cryptoapis_get_xrp_ripple_transaction_details_by_transaction_idri_offer:cryptoapis_get_xrp_ripple_transaction_details_by_transaction_idri_offer(),
       'Receive_' := cryptoapis_get_xrp_ripple_transaction_details_by_transaction_idri_receive:cryptoapis_get_xrp_ripple_transaction_details_by_transaction_idri_receive(),
       'recipients' := list(),
       'senders' := list(),
       'sequence' := integer(),
       'status' => binary(),
       'timestamp' := integer(),
       'transactionHash' := binary(),
       'type' := binary(),
       'fee' := cryptoapis_get_xrp_ripple_transaction_details_by_transaction_idri_fee:cryptoapis_get_xrp_ripple_transaction_details_by_transaction_idri_fee(),
       'value' := cryptoapis_get_xrp_ripple_transaction_details_by_transaction_idri_value:cryptoapis_get_xrp_ripple_transaction_details_by_transaction_idri_value()
     }.

encode(#{ 'additionalData' := AdditionalData,
          'index' := Index,
          'minedInBlockHash' := MinedInBlockHash,
          'minedInBlockHeight' := MinedInBlockHeight,
          'offer' := Offer,
          'Receive_' := Receive,
          'recipients' := Recipients,
          'senders' := Senders,
          'sequence' := Sequence,
          'status' := Status,
          'timestamp' := Timestamp,
          'transactionHash' := TransactionHash,
          'type' := Type,
          'fee' := Fee,
          'value' := Value
        }) ->
    #{ 'additionalData' => AdditionalData,
       'index' => Index,
       'minedInBlockHash' => MinedInBlockHash,
       'minedInBlockHeight' => MinedInBlockHeight,
       'offer' => Offer,
       'receive' => Receive,
       'recipients' => Recipients,
       'senders' => Senders,
       'sequence' => Sequence,
       'status' => Status,
       'timestamp' => Timestamp,
       'transactionHash' => TransactionHash,
       'type' => Type,
       'fee' => Fee,
       'value' => Value
     }.
