-module(cryptoapis_list_xrp_ripple_transactions_by_address_ri).

-export([encode/1]).

-export_type([cryptoapis_list_xrp_ripple_transactions_by_address_ri/0]).

-type cryptoapis_list_xrp_ripple_transactions_by_address_ri() ::
    #{ 'additionalData' := binary(),
       'index' := integer(),
       'minedInBlockHash' := binary(),
       'minedInBlockHeight' := integer(),
       'recipients' := list(),
       'senders' := list(),
       'sequence' := integer(),
       'status' := binary(),
       'timestamp' := integer(),
       'transactionHash' := binary(),
       'type' := binary(),
       'fee' := cryptoapis_list_xrp_ripple_transactions_by_address_ri_fee:cryptoapis_list_xrp_ripple_transactions_by_address_ri_fee(),
       'offer' := cryptoapis_list_xrp_ripple_transactions_by_address_ri_offer:cryptoapis_list_xrp_ripple_transactions_by_address_ri_offer(),
       'Receive_' := cryptoapis_list_xrp_ripple_transactions_by_address_ri_receive:cryptoapis_list_xrp_ripple_transactions_by_address_ri_receive(),
       'value' := cryptoapis_list_xrp_ripple_transactions_by_address_ri_value:cryptoapis_list_xrp_ripple_transactions_by_address_ri_value()
     }.

encode(#{ 'additionalData' := AdditionalData,
          'index' := Index,
          'minedInBlockHash' := MinedInBlockHash,
          'minedInBlockHeight' := MinedInBlockHeight,
          'recipients' := Recipients,
          'senders' := Senders,
          'sequence' := Sequence,
          'status' := Status,
          'timestamp' := Timestamp,
          'transactionHash' := TransactionHash,
          'type' := Type,
          'fee' := Fee,
          'offer' := Offer,
          'Receive_' := Receive,
          'value' := Value
        }) ->
    #{ 'additionalData' => AdditionalData,
       'index' => Index,
       'minedInBlockHash' => MinedInBlockHash,
       'minedInBlockHeight' => MinedInBlockHeight,
       'recipients' => Recipients,
       'senders' => Senders,
       'sequence' => Sequence,
       'status' => Status,
       'timestamp' => Timestamp,
       'transactionHash' => TransactionHash,
       'type' => Type,
       'fee' => Fee,
       'offer' => Offer,
       'receive' => Receive,
       'value' => Value
     }.
