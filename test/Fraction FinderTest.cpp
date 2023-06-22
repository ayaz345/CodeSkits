#include <gtest/gtest.h>
#include "Fraction Finder.cpp"

TEST(FractionFinderTest, FractionOutput) {
    testing::internal::CaptureStdout();
    main_frac_finder("3\n4\n");
    std::string output = testing::internal::GetCapturedStdout();
    EXPECT_EQ("Fraction: 3/4\n", output);
}

TEST(FractionFinderTest, ZeroDenominator) {
    testing::internal::CaptureStderr();
    main_frac_finder("3\n0\n");
    std::string errorOutput = testing::internal::GetCapturedStderr();
    EXPECT_EQ("Error: Denominator cannot be zero\n", errorOutput);
}