# DESIGN.md - <Plugin Name>

This file defines the shared MMX admin design system for WordPress plugins.

## Goals
- Consistent look and behavior across all plugin admin pages.
- Fast to scan, keyboard-friendly, and readable.
- Simple to theme (light/dark only).

## Core Layout
- Wrap all plugin UI inside `.mmx`.
- Structure:
  - Header (title, short subtitle, controls)
  - Status row
  - Card grid
  - Important Notes section
- Default card grid: 12 columns desktop, full width cards on smaller screens.
- Important Notes must have visible spacing above it (never flush against previous container).

## Components
- Buttons:
  - Primary: key action
  - Secondary: neutral action
  - Ghost: low emphasis action
- Inputs:
  - Shared height/radius/border/focus styles
  - Labels always visible
- Code blocks:
  - Monospace
  - Copy action available
- Toasts:
  - Human-readable error messages
  - Long enough visibility for debugging

## Theme
- Theme control should be a simple Light/Dark toggle.
- Theme toggle must switch full plugin panel (not just text color).
- Dark mode must update:
  - Admin canvas background
  - Card surfaces
  - Inputs/selects/buttons
  - Text and muted text colors
- Dark mode should maintain clear tonal layering:
  - Background, card, and field/code surfaces should be different greys.
- Plugin title should remain high-contrast in dark mode (white or near-white).
- Persist in localStorage:
  - `mmx_theme`

## Accessibility
- Visible focus states.
- Contrast-safe text/background pairs in both themes.
- Form controls and buttons keyboard operable.
- Important actions never rely on color alone.

## Interaction Rules
- View actions should preflight responses and show meaningful errors.
- Download actions should remain native browser downloads.
- If nonce/session issues occur, instruct user to reload page.

## Consistency Rule
- New plugin UIs start from this template and evolve centrally.
- Improvements discovered in any plugin should be backported here.
