Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.red),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  onFieldSubmitted: (value) {
                    setState(() {
                      textTitle = value;
                      _futureRecipes = fetchRecipes(value);
                    });
                  },
                  cursorColor: Colors.black,
                  controller: _controller,
                  style: GoogleFonts.montserrat(color: Colors.black),
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    hintStyle: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                    border: InputBorder.none,
                    suffixIcon: const Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 25,
                    ),
                  ),
                ),
              ),
            ),
          ),



