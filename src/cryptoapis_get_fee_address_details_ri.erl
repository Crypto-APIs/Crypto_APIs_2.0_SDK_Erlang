-module(cryptoapis_get_fee_address_details_ri).

-export([encode/1]).

-export_type([cryptoapis_get_fee_address_details_ri/0]).

-type cryptoapis_get_fee_address_details_ri() ::
    #{ 'address' := binary(),
       'balance' := cryptoapis_get_fee_address_details_ri_balance:cryptoapis_get_fee_address_details_ri_balance(),
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
