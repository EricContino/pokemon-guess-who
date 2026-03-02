package pokecache

import (
	"sync"
	"time"
	"github.com/EricContino/pokemon-guess-who/internal/models"
)

type Cache struct {
	cache map[int]cacheEntry
	mux *sync.Mutex
}

type cacheEntry {
	createdAt time.Time
	val models.Game
}
