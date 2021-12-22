-module(cryptoapis_get_wallet_transaction_details_by_transaction_idr_data).

-export([encode/1]).

-export_type([cryptoapis_get_wallet_transaction_details_by_transaction_idr_data/0]).

-type cryptoapis_get_wallet_transaction_details_by_transaction_idr_data() ::
    #{ 'item' := cryptoapis_get_wallet_transaction_details_by_transaction_idri:cryptoapis_get_wallet_transaction_details_by_transaction_idri()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
