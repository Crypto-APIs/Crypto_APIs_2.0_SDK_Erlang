-module(cryptoapis_get_block_details_by_block_hash_ribsz2).

-export([encode/1]).

-export_type([cryptoapis_get_block_details_by_block_hash_ribsz2/0]).

-type cryptoapis_get_block_details_by_block_hash_ribsz2() ::
    #{ 'difficulty' := binary(),
       'dsBlock' := integer(),
       'dsDifficulty' := binary(),
       'dsLeader' := binary(),
       'gasLimit' := integer(),
       'gasUsed' := integer(),
       'microBlocks' := list()
     }.

encode(#{ 'difficulty' := Difficulty,
          'dsBlock' := DsBlock,
          'dsDifficulty' := DsDifficulty,
          'dsLeader' := DsLeader,
          'gasLimit' := GasLimit,
          'gasUsed' := GasUsed,
          'microBlocks' := MicroBlocks
        }) ->
    #{ 'difficulty' => Difficulty,
       'dsBlock' => DsBlock,
       'dsDifficulty' => DsDifficulty,
       'dsLeader' => DsLeader,
       'gasLimit' => GasLimit,
       'gasUsed' => GasUsed,
       'microBlocks' => MicroBlocks
     }.
