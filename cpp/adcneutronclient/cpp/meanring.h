#pragma once
#include <cstdint>
#include <vector>


class MeanRing
{
public:
    MeanRing() = delete;
    MeanRing(size_t size) : m_size(size), m_data(size) {}

    void push(uint16_t value)
    {
        if (m_dataCount < m_size) {
            m_dataCount++;
            m_sum += value;
        } else {
            m_sum = (m_sum + static_cast<uint32_t>(value)) - static_cast<uint32_t>(m_data[m_index]);
        }
        m_data[m_index++] = value;
        if (m_index >= m_size) {
            m_index = 0;
        }
    }

    bool full() const
    {
        return m_dataCount == m_size;
    }

    uint16_t mean() const
    {
        return static_cast<uint16_t>(m_sum / m_dataCount);
    }

private:
    size_t m_size = 0;
    std::vector<uint16_t> m_data;
    uint32_t m_sum = 0;
    size_t m_index = 0;
    size_t m_dataCount = 0;
};
