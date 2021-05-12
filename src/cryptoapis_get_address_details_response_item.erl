-module(cryptoapis_get_address_details_response_item).

-export([encode/1]).

-export_type([cryptoapis_get_address_details_response_item/0]).

-type cryptoapis_get_address_details_response_item() ::
    #{ 'transactionsCount' := integer(),
       'confirmedBalance' := cryptoapis_get_address_details_response_item_confirmed_balance:cryptoapis_get_address_details_response_item_confirmed_balance(),
       'totalReceived' := cryptoapis_get_address_details_response_item_total_received:cryptoapis_get_address_details_response_item_total_received(),
       'totalSpent' := cryptoapis_get_address_details_response_item_total_spent:cryptoapis_get_address_details_response_item_total_spent(),
       'incomingTransactionsCount' := integer(),
       'outgoingTransactionsCount' := integer()
     }.

encode(#{ 'transactionsCount' := TransactionsCount,
          'confirmedBalance' := ConfirmedBalance,
          'totalReceived' := TotalReceived,
          'totalSpent' := TotalSpent,
          'incomingTransactionsCount' := IncomingTransactionsCount,
          'outgoingTransactionsCount' := OutgoingTransactionsCount
        }) ->
    #{ 'transactionsCount' => TransactionsCount,
       'confirmedBalance' => ConfirmedBalance,
       'totalReceived' => TotalReceived,
       'totalSpent' => TotalSpent,
       'incomingTransactionsCount' => IncomingTransactionsCount,
       'outgoingTransactionsCount' => OutgoingTransactionsCount
     }.
