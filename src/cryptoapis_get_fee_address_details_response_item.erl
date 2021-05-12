-module(cryptoapis_get_fee_address_details_response_item).

-export([encode/1]).

-export_type([cryptoapis_get_fee_address_details_response_item/0]).

-type cryptoapis_get_fee_address_details_response_item() ::
    #{ 'address' := binary(),
       'balance' := cryptoapis_get_fee_address_details_response_item_balance:cryptoapis_get_fee_address_details_response_item_balance(),
       'minimumTransferAmount' := binary()
     }.

encode(#{ 'address' := Address,
          'balance' := Balance,
          'minimumTransferAmount' := MinimumTransferAmount
        }) ->
    #{ 'address' => Address,
       'balance' => Balance,
       'minimumTransferAmount' => MinimumTransferAmount
     }.
