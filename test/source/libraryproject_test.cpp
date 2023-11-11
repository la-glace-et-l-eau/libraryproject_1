#include "libraryproject/libraryproject.hpp"

#include <catch2/catch_test_macros.hpp>

TEST_CASE("Name is libraryproject", "[library]")
{
  REQUIRE(name() == "libraryproject");
}
