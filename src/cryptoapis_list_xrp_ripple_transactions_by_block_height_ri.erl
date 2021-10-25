-module(cryptoapis_list_xrp_ripple_transactions_by_block_height_ri).

-export([encode/1]).

-export_type([cryptoapis_list_xrp_ripple_transactions_by_block_height_ri/0]).

-type cryptoapis_list_xrp_ripple_transactions_by_block_height_ri() ::
    #{ 'additionalData' => binary(),
       'destinationTag' => integer(),
       'index' := integer(),
       'minedInBlockHash' := binary(),
       'recipients' := list(),
       'senders' := list(),
       'sequence' := integer(),
       'status' := binary(),
       'timestamp' := integer(),
       'transactionHash' := binary(),
       'type' := binary(),
       'fee' := cryptoapis_list_xrp_ripple_transactions_by_block_height_ri_fee:cryptoapis_list_xrp_ripple_transactions_by_block_height_ri_fee(),
       'offer' := cryptoapis_list_xrp_ripple_transactions_by_block_height_ri_offer:cryptoapis_list_xrp_ripple_transactions_by_block_height_ri_offer(),
       'Receive_' := cryptoapis_list_xrp_ripple_transactions_by_block_height_ri_receive:cryptoapis_list_xrp_ripple_transactions_by_block_height_ri_receive(),
       'value' := cryptoapis_list_xrp_ripple_transactions_by_block_height_ri_value:cryptoapis_list_xrp_ripple_transactions_by_block_height_ri_value()
     }.

encode(#{ 'additionalData' := AdditionalData,
          'destinationTag' := DestinationTag,
          'index' := Index,
          'minedInBlockHash' := MinedInBlockHash,
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
       'destinationTag' => DestinationTag,
       'index' => Index,
       'minedInBlockHash' => MinedInBlockHash,
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
