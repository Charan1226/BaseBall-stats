class Player < ApplicationRecord
  def average
    return 0 if at_bats.to_i.zero? || hits.to_i.zero?

    (hits/at_bats).round(3)
  end

  def display_name
    [given_name.to_s, sur_name.to_s].join(' ')
  end

  def ops
    (obp + slg).round(3)
  end

  private

  def obp
    return 0 if (walks.to_i.zero? && hit_by_pitch.to_i.zero? &&
                 sacrifice_flies.to_i.zero? && at_bats.to_i.zero?)

    (hits.to_i + walks.to_i + hit_by_pitch.to_i)/
    (at_bats.to_i + walks.to_i + hit_by_pitch.to_i + sacrifice_flies.to_i)
  end

  def slg
    return 0 if at_bats.to_i.zero?

    (hits.to_i + (2 * doubles.to_i) + (3 * triples.to_i) + (4 * home_runs.to_i))/(at_bats.to_i)
  end
end
