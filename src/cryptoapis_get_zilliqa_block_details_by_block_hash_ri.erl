-module(cryptoapis_get_zilliqa_block_details_by_block_hash_ri).

-export([encode/1]).

-export_type([cryptoapis_get_zilliqa_block_details_by_block_hash_ri/0]).

-type cryptoapis_get_zilliqa_block_details_by_block_hash_ri() ::
    #{ 'blockHeight' := integer(),
       'difficulty' := binary(),
       'dsBlock' := integer(),
       'dsDifficulty' := binary(),
       'dsLeader' := binary(),
       'gasLimit' := integer(),
       'gasUsed' := integer(),
       'microBlocks' := list(),
       'nextBlockHash' := binary(),
       'previousBlockHash' := binary(),
       'timestamp' := integer(),
       'transactionsCount' := integer()
     }.

encode(#{ 'blockHeight' := BlockHeight,
          'difficulty' := Difficulty,
          'dsBlock' := DsBlock,
          'dsDifficulty' := DsDifficulty,
          'dsLeader' := DsLeader,
          'gasLimit' := GasLimit,
          'gasUsed' := GasUsed,
          'microBlocks' := MicroBlocks,
          'nextBlockHash' := NextBlockHash,
          'previousBlockHash' := PreviousBlockHash,
          'timestamp' := Timestamp,
          'transactionsCount' := TransactionsCount
        }) ->
    #{ 'blockHeight' => BlockHeight,
       'difficulty' => Difficulty,
       'dsBlock' => DsBlock,
       'dsDifficulty' => DsDifficulty,
       'dsLeader' => DsLeader,
       'gasLimit' => GasLimit,
       'gasUsed' => GasUsed,
       'microBlocks' => MicroBlocks,
       'nextBlockHash' => NextBlockHash,
       'previousBlockHash' => PreviousBlockHash,
       'timestamp' => Timestamp,
       'transactionsCount' => TransactionsCount
     }.
