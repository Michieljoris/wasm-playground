#ifndef __MEMORY_POOL_H_
#define __MEMORY_POOL_H_

#include "lib.h"
typedef struct memory_pool Mempool;

typedef int (*Log)(const char* fmt, ...);

struct memory_pool {
  uint total_slot_count;  // Num of slots
  uint slot_size;         // Size of each slot

  uint free_slot_count;  // Number of unallocated slots
  void* free_slot_p;     // Address of next free slot

  uint data_block_count;
  void** data_pointers;   // List of data pointers to all allocated data blocks
  void* uninitialised_p;  // Pointer to remaining part of data that's not yet
                          // initialised in latest data block
  uint initialised_count;
  int auto_resize;
  Log log;
  /* void* (*log)(Mempool*, char*); */
};

enum { MEMPOOL_FIXED_SIZE, MEMPOOL_AUTO_RESIZE };

void mempool_reserve_memory(int initial_page_count, int _max_page_count);

Mempool* create_mempool(int slot_size, uint slot_clount, int auto_resize,
                        Log log);
void free_mempool(Mempool* memory_pool);

void* mempool_alloc(Mempool* memory_pool);

void mempool_free(Mempool* memory_pool, void* slot);

void mempool_debug(Mempool* mp);
#endif  // __MEMORY_POOL_H_
