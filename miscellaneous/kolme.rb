def kolme_kertaa
    yield
    yield
    yield
  end
  kolme_kertaa do
    print "Heippa\n"
  end