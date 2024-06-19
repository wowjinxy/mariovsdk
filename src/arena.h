struct Arena
{
    void *startAddr;
    void *head;
    void *endAddr;
    u32 totalSize;
    void *savedHeads[4];
};

extern struct Arena gArena;

void arena_init(void *start, void *end);
void *arena_allocate(u32 size);
void arena_save_head(s32 index);
void arena_restore_head(s32 index);
