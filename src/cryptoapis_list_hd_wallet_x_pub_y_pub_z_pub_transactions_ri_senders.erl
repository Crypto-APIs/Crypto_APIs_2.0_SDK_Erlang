-module(cryptoapis_list_hd_wallet_x_pub_y_pub_z_pub_transactions_ri_senders).

-export([encode/1]).

-export_type([cryptoapis_list_hd_wallet_x_pub_y_pub_z_pub_transactions_ri_senders/0]).

-type cryptoapis_list_hd_wallet_x_pub_y_pub_z_pub_transactions_ri_senders() ::
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
