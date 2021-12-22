-module(cryptoapis_get_transaction_details_by_transaction_id_from_callback_ribsx).

-export([encode/1]).

-export_type([cryptoapis_get_transaction_details_by_transaction_id_from_callback_ribsx/0]).

-type cryptoapis_get_transaction_details_by_transaction_id_from_callback_ribsx() ::
    #{ 'additionalData' := binary(),
       'destinationTag' => integer(),
       'offer' := cryptoapis_get_xrp_ripple_transaction_details_by_transaction_idri_offer:cryptoapis_get_xrp_ripple_transaction_details_by_transaction_idri_offer(),
       'Receive_' := cryptoapis_get_xrp_ripple_transaction_details_by_transaction_idri_receive:cryptoapis_get_xrp_ripple_transaction_details_by_transaction_idri_receive(),
       'sequence' := integer(),
       'status' := binary(),
       'type' := binary(),
       'value' := cryptoapis_get_transaction_details_by_transaction_id_from_callback_ribsx_value:cryptoapis_get_transaction_details_by_transaction_id_from_callback_ribsx_value()
     }.

encode(#{ 'additionalData' := AdditionalData,
          'destinationTag' := DestinationTag,
          'offer' := Offer,
          'Receive_' := Receive,
          'sequence' := Sequence,
          'status' := Status,
          'type' := Type,
          'value' := Value
        }) ->
    #{ 'additionalData' => AdditionalData,
       'destinationTag' => DestinationTag,
       'offer' => Offer,
       'receive' => Receive,
       'sequence' => Sequence,
       'status' => Status,
       'type' => Type,
       'value' => Value
     }.
