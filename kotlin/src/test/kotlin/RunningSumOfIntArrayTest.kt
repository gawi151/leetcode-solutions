import org.junit.jupiter.api.Test
import kotlin.test.assertContentEquals

internal class RunningSumOfIntArrayTest {

    private val solution = RunningSumOfIntArray()

    @Test
    fun runningSum() {
        val inputData = arrayListOf(
            intArrayOf(1,2,3,4),
            intArrayOf(1,1,1,1,1),
            intArrayOf(3,1,2,10,1),
        )
        val expectedOutput = arrayListOf(
            intArrayOf(1,3,6,10),
            intArrayOf(1,2,3,4,5),
            intArrayOf(3,4,6,16,17),
        )
        for (i in inputData.indices) {
            val result = solution.runningSum(inputData[i])
            assertContentEquals(expectedOutput[i], result, "input #$i is not working")
        }
    }
}