from typing import List, Optional
from uuid import UUID, uuid4
from enum import Enum
from pydantic import BaseModel

class Genre(Enum):
    romance = "romance"
    action = "action"
    horror = "horror"
    comedy = "comedy"
    drama = "drama"
    thriller = "thriller"
    animation = "animation"
    fantasy = "fantasy"
    scifi = "scifi"

class Book(BaseModel):
    id: Optional[UUID] = uuid4()
    title: str
    author: str
    genre: Genre
    year: int
    pages: int
