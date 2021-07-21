-module(cryptoapis_get_wallet_asset_details_ri).

-export([encode/1]).

-export_type([cryptoapis_get_wallet_asset_details_ri/0]).

-type cryptoapis_get_wallet_asset_details_ri() ::
    #{ 'confirmedBalance' := cryptoapis_get_wallet_asset_details_ri_confirmed_balance:cryptoapis_get_wallet_asset_details_ri_confirmed_balance(),
       'depositAddressesCount' := integer(),
       'name' := binary(),
       'recievedConfirmedAmount' := cryptoapis_get_wallet_asset_details_ri_recieved_confirmed_amount:cryptoapis_get_wallet_asset_details_ri_recieved_confirmed_amount(),
       'sentConfirmedAmount' := cryptoapis_get_wallet_asset_details_ri_sent_confirmed_amount:cryptoapis_get_wallet_asset_details_ri_sent_confirmed_amount()
     }.

encode(#{ 'confirmedBalance' := ConfirmedBalance,
          'depositAddressesCount' := DepositAddressesCount,
          'name' := Name,
          'recievedConfirmedAmount' := RecievedConfirmedAmount,
          'sentConfirmedAmount' := SentConfirmedAmount
        }) ->
    #{ 'confirmedBalance' => ConfirmedBalance,
       'depositAddressesCount' => DepositAddressesCount,
       'name' => Name,
       'recievedConfirmedAmount' => RecievedConfirmedAmount,
       'sentConfirmedAmount' => SentConfirmedAmount
     }.
