-module(cryptoapis_list_hd_walletx_pub_y_pub_z_pub_transactions_response_item_recipients).

-export([encode/1]).

-export_type([cryptoapis_list_hd_walletx_pub_y_pub_z_pub_transactions_response_item_recipients/0]).

-type cryptoapis_list_hd_walletx_pub_y_pub_z_pub_transactions_response_item_recipients() ::
    #{ 'address' := binary(),
       'amount' := binary(),
       'isMember' := boolean()
     }.

encode(#{ 'address' := Address,
          'amount' := Amount,
          'isMember' := IsMember
        }) ->
    #{ 'address' => Address,
       'amount' => Amount,
       'isMember' => IsMember
     }.
