-module(cryptoapis_list_hd_wallet_x_pub_y_pub_z_pub_transactions_ri).

-export([encode/1]).

-export_type([cryptoapis_list_hd_wallet_x_pub_y_pub_z_pub_transactions_ri/0]).

-type cryptoapis_list_hd_wallet_x_pub_y_pub_z_pub_transactions_ri() ::
    #{ 'index' := integer(),
       'minedInBlockHash' := binary(),
       'minedInBlockHeight' := integer(),
       'recipients' := list(),
       'senders' := list(),
       'timestamp' := integer(),
       'transactionHash' := binary(),
       'transactionId' := binary(),
       'fee' := cryptoapis_list_hd_wallet_x_pub_y_pub_z_pub_transactions_ri_fee:cryptoapis_list_hd_wallet_x_pub_y_pub_z_pub_transactions_ri_fee()
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
