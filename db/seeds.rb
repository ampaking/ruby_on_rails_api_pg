test_author = Author.create([{
        name: "Test Author 1",
        bio: "Test Author 1 is a test writter. "
    },
    {
        name: "Test Author 2",
        bio: "Test Author 2 is a test writter. "
    }
])

Book.create([
    {
        title: "Test 1",
        genre: "Fantasy",
        pages: 300,
        author: test_author[0]
    },
    {
        title: "Test 2",
        genre: "Fantasy",
        pages: 320,
        author: test_author[0]
    },
    {
        title: "Test 3",
        genre: "Fantasy",
        pages: 333,
        author: test_author[1]
    },
    {
        title: "Test 4",
        genre: "Fantasy",
        pages: 3334,
        author: test_author[1]
    }
])
