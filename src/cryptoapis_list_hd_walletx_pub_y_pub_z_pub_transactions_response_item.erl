-module(cryptoapis_list_hd_walletx_pub_y_pub_z_pub_transactions_response_item).

-export([encode/1]).

-export_type([cryptoapis_list_hd_walletx_pub_y_pub_z_pub_transactions_response_item/0]).

-type cryptoapis_list_hd_walletx_pub_y_pub_z_pub_transactions_response_item() ::
    #{ 'index' := integer(),
       'minedInBlockHash' := binary(),
       'minedInBlockHeight' := integer(),
       'recipients' := list(),
       'senders' := list(),
       'timestamp' := integer(),
       'transactionHash' := binary(),
       'transactionId' := binary(),
       'fee' := cryptoapis_list_hd_walletx_pub_y_pub_z_pub_transactions_response_item_fee:cryptoapis_list_hd_walletx_pub_y_pub_z_pub_transactions_response_item_fee()
     }.

encode(#{ 'index' := Index,
          'minedInBlockHash' := MinedInBlockHash,
          'minedInBlockHeight' := MinedInBlockHeight,
          'recipients' := Recipients,
          'senders' := Senders,
          'timestamp' := Timestamp,
          'transactionHash' := TransactionHash,
          'transactionId' := TransactionId,
          'fee' := Fee
        }) ->
    #{ 'index' => Index,
       'minedInBlockHash' => MinedInBlockHash,
       'minedInBlockHeight' => MinedInBlockHeight,
       'recipients' => Recipients,
       'senders' => Senders,
       'timestamp' => Timestamp,
       'transactionHash' => TransactionHash,
       'transactionId' => TransactionId,
       'fee' => Fee
     }.
