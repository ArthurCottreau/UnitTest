#define CATCH_CONFIG_MAIN
#include <catch2/catch_all.hpp>
#include "mycode.h"

TEST_CASE("Simple Test", "[math]") {
	REQUIRE(1 + 1 == 2);
}

TEST_CASE("Simple Test with outside code", "[math]") {
	int result = add(1, 1);
	REQUIRE(result == 3);
}
