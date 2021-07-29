local progress = require 'ProgressUtils'

progress.AddValue(15)
progress.WaitTime(10)
progress.MaxValue(100)
progress.Message("Loading your content...")
progress.StyleID(0)

progress.Version()